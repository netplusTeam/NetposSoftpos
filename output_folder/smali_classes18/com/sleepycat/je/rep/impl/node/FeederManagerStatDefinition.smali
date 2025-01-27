.class public Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;
.super Ljava/lang/Object;
.source "FeederManagerStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "A feeder is a replication stream connection between a master and replica nodes."

.field public static final GROUP_NAME:Ljava/lang/String; = "FeederManager"

.field public static final N_FEEDERS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_FEEDERS_CREATED_DESC:Ljava/lang/String; = "Number of Feeder threads since this node was started."

.field public static final N_FEEDERS_CREATED_NAME:Ljava/lang/String; = "nFeedersCreated"

.field public static final N_FEEDERS_SHUTDOWN:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_FEEDERS_SHUTDOWN_DESC:Ljava/lang/String; = "Number of Feeder threads that were shut down, either because this node, or the Replica terminated the connection."

.field public static final N_FEEDERS_SHUTDOWN_NAME:Ljava/lang/String; = "nFeedersShutdown"

.field public static final REPLICA_95_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_95_DELAY_MS_MAP_DESC:Ljava/lang/String; = "A map from replica node name to the 95th percentile value for the current period of the delay, in milliseconds, between when a transaction was committed on the master and when the masterlearned that the change was processed on the replica, if known. Returns an empty map if this node is not the master."

.field public static final REPLICA_95_DELAY_MS_MAP_NAME:Ljava/lang/String; = "replica95DelayMsMap"

.field public static final REPLICA_99_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_99_DELAY_MS_MAP_DESC:Ljava/lang/String; = "A map from replica node name to the 99th percentile value for the current period of the delay, in milliseconds, between when a transaction was committed on the master and when the masterlearned that the change was processed on the replica, if known. Returns an empty map if this node is not the master."

.field public static final REPLICA_99_DELAY_MS_MAP_NAME:Ljava/lang/String; = "replica99DelayMsMap"

.field public static final REPLICA_AVG_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_AVG_DELAY_MS_MAP_DESC:Ljava/lang/String; = "A map from replica node name to the average for the current period of the delay, in milliseconds, between when a transaction was committed on the master and when the master learned that the change was processed on the replica, if known. Returns an empty map if this node is not the master."

.field public static final REPLICA_AVG_DELAY_MS_MAP_NAME:Ljava/lang/String; = "replicaAvgDelayMsMap"

.field public static final REPLICA_DELAY_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_DELAY_MAP_DESC:Ljava/lang/String; = "A map from replica node name to the most recently known delay, in milliseconds, between when a transaction was committed on the master and when the master learned that the change was processed on the replica, if known. Returns an empty map if this node is not the master. The delay represents the time that would be needed to receive a transaction acknowledgement."

.field public static final REPLICA_DELAY_MAP_NAME:Ljava/lang/String; = "replicaDelayMap"

.field public static final REPLICA_LAST_COMMIT_TIMESTAMP_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_LAST_COMMIT_TIMESTAMP_MAP_DESC:Ljava/lang/String; = "A map from replica node name to the commit timestamp of the last committed transaction that was processed on the replica, if known. Returns an empty map if this node is not the master."

.field public static final REPLICA_LAST_COMMIT_TIMESTAMP_MAP_NAME:Ljava/lang/String; = "replicaLastCommitTimestampMap"

.field public static final REPLICA_LAST_COMMIT_VLSN_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_LAST_COMMIT_VLSN_MAP_DESC:Ljava/lang/String; = "A map from replica node name to the VLSN of the last committed transaction that was processed on the replica, if known. Returns an empty map if this node is not the master."

.field public static final REPLICA_LAST_COMMIT_VLSN_MAP_NAME:Ljava/lang/String; = "replicaLastCommitVLSNMap"

.field public static final REPLICA_MAX_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_MAX_DELAY_MS_MAP_DESC:Ljava/lang/String; = "A map from replica node name to the maximum value for the current period of the delay, in milliseconds, between when a transaction was committed on the master and when the masterlearned that the change was processed on the replica, if known. Returns an empty map if this node is not the master."

.field public static final REPLICA_MAX_DELAY_MS_MAP_NAME:Ljava/lang/String; = "replicaMaxDelayMsMap"

.field public static final REPLICA_VLSN_LAG_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_VLSN_LAG_MAP_DESC:Ljava/lang/String; = "A map from replica node name to the lag, in VLSNs, between the replication state of the replica and the master, if known. Returns an empty map if this node is not the master."

.field public static final REPLICA_VLSN_LAG_MAP_NAME:Ljava/lang/String; = "replicaVLSNLagMap"

.field public static final REPLICA_VLSN_RATE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLICA_VLSN_RATE_MAP_DESC:Ljava/lang/String; = "A map from replica node name to a moving average of the rate, in VLSNs per minute, that the replica is processing replication data, if known. Returns an empty map if this node is not the master."

.field public static final REPLICA_VLSN_RATE_MAP_NAME:Ljava/lang/String; = "replicaVLSNRateMap"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFeedersCreated"

    const-string v2, "Number of Feeder threads since this node was started."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->N_FEEDERS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 44
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFeedersShutdown"

    const-string v2, "Number of Feeder threads that were shut down, either because this node, or the Replica terminated the connection."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->N_FEEDERS_SHUTDOWN:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 58
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string/jumbo v2, "replicaDelayMap"

    const-string v3, "A map from replica node name to the most recently known delay, in milliseconds, between when a transaction was committed on the master and when the master learned that the change was processed on the replica, if known. Returns an empty map if this node is not the master. The delay represents the time that would be needed to receive a transaction acknowledgement."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_DELAY_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 72
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replicaAvgDelayMsMap"

    const-string v2, "A map from replica node name to the average for the current period of the delay, in milliseconds, between when a transaction was committed on the master and when the master learned that the change was processed on the replica, if known. Returns an empty map if this node is not the master."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_AVG_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 84
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replica95DelayMsMap"

    const-string v2, "A map from replica node name to the 95th percentile value for the current period of the delay, in milliseconds, between when a transaction was committed on the master and when the masterlearned that the change was processed on the replica, if known. Returns an empty map if this node is not the master."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_95_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 96
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replica99DelayMsMap"

    const-string v2, "A map from replica node name to the 99th percentile value for the current period of the delay, in milliseconds, between when a transaction was committed on the master and when the masterlearned that the change was processed on the replica, if known. Returns an empty map if this node is not the master."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_99_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 108
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replicaMaxDelayMsMap"

    const-string v2, "A map from replica node name to the maximum value for the current period of the delay, in milliseconds, between when a transaction was committed on the master and when the masterlearned that the change was processed on the replica, if known. Returns an empty map if this node is not the master."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_MAX_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 118
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string/jumbo v2, "replicaLastCommitTimestampMap"

    const-string v3, "A map from replica node name to the commit timestamp of the last committed transaction that was processed on the replica, if known. Returns an empty map if this node is not the master."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_LAST_COMMIT_TIMESTAMP_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 130
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string/jumbo v2, "replicaLastCommitVLSNMap"

    const-string v3, "A map from replica node name to the VLSN of the last committed transaction that was processed on the replica, if known. Returns an empty map if this node is not the master."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_LAST_COMMIT_VLSN_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 142
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string/jumbo v2, "replicaVLSNLagMap"

    const-string v3, "A map from replica node name to the lag, in VLSNs, between the replication state of the replica and the master, if known. Returns an empty map if this node is not the master."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_VLSN_LAG_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 155
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replicaVLSNRateMap"

    const-string v2, "A map from replica node name to a moving average of the rate, in VLSNs per minute, that the replica is processing replication data, if known. Returns an empty map if this node is not the master."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_VLSN_RATE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
