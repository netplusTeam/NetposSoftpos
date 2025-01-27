.class public Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;
.super Lcom/sleepycat/je/statcap/StatCaptureDefinitions;
.source "StatCaptureRepDefinitions.java"


# static fields
.field private static binaryProtocolStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static feederStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static feedertxnStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field public static maxStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

.field public static minStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

.field private static replayStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static replicaStats:[Lcom/sleepycat/je/utilint/StatDefinition;

.field private static vlsnIndexStats:[Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 30
    const/16 v0, 0xb

    new-array v1, v0, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->N_FEEDERS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->N_FEEDERS_SHUTDOWN:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_DELAY_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_AVG_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_95_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_99_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_MAX_DELAY_MS_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_LAST_COMMIT_TIMESTAMP_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_LAST_COMMIT_VLSN_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_VLSN_LAG_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/FeederManagerStatDefinition;->REPLICA_VLSN_RATE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sput-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->feederStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 44
    const/16 v1, 0x1d

    new-array v1, v1, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_WRITE_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_NAME_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_MESSAGE_QUEUE_OVERFLOWS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MIN_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MAX_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->TOTAL_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v0

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->LATEST_COMMIT_LAG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v14, 0xc

    aput-object v2, v1, v14

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0xd

    aput-object v2, v1, v15

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_MAX_EXCEEDED:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v16, 0xe

    aput-object v2, v1, v16

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v17, 0xf

    aput-object v2, v1, v17

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v18, 0x10

    aput-object v2, v1, v18

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v15, 0x11

    aput-object v2, v1, v15

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x12

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x13

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x14

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x15

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x16

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x17

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x18

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x19

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x1a

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x1b

    aput-object v2, v1, v19

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v19, 0x1c

    aput-object v2, v1, v19

    sput-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->replayStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 76
    new-array v1, v7, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_LAG_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_LAG_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_VLSN_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_VLSN_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v6

    sput-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->replicaStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 83
    new-array v1, v10, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v2, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TXNS_ACKED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TXNS_NOT_ACKED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->TOTAL_TXN_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->ACK_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->LAST_COMMIT_VLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->LAST_COMMIT_TIMESTAMP:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sleepycat/je/rep/stream/FeederTxnStatDefinition;->VLSN_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v9

    sput-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->feedertxnStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 93
    new-array v1, v15, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGE_BATCHES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v8

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_BATCHED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v9

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v10

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->MESSAGE_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v11

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->MESSAGE_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v12

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->BYTES_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v13

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->BYTES_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v2, v1, v0

    sget-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_ACK_MESSAGES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v0, v1, v14

    sget-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_GROUP_ACK_MESSAGES:Lcom/sleepycat/je/utilint/StatDefinition;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MAX_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v0, v1, v16

    sget-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v0, v1, v17

    sget-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_ENTRIES_WRITTEN_OLD_VERSION:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v0, v1, v18

    sput-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->binaryProtocolStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 113
    new-array v0, v8, [Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_MISSES:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_HEAD_BUCKETS_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_TAIL_BUCKETS_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_BUCKETS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->vlsnIndexStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    .line 126
    new-array v0, v4, [Lcom/sleepycat/je/statcap/StatManager$SDef;

    new-instance v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MIN_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v9, "Replay"

    invoke-direct {v1, v9, v2}, Lcom/sleepycat/je/statcap/StatManager$SDef;-><init>(Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->minStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

    .line 131
    new-array v0, v8, [Lcom/sleepycat/je/statcap/StatManager$SDef;

    new-instance v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v9, v2}, Lcom/sleepycat/je/statcap/StatManager$SDef;-><init>(Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MAX_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v9, v2}, Lcom/sleepycat/je/statcap/StatManager$SDef;-><init>(Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v9, v2}, Lcom/sleepycat/je/statcap/StatManager$SDef;-><init>(Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v2, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v9, v2}, Lcom/sleepycat/je/statcap/StatManager$SDef;-><init>(Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    sget-object v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MAX_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v3, "BinaryProtocol"

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/statcap/StatManager$SDef;-><init>(Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->maxStats:[Lcom/sleepycat/je/statcap/StatManager$SDef;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 145
    invoke-direct {p0}, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;-><init>()V

    .line 146
    const-string v0, "FeederManager"

    .line 147
    .local v0, "groupname":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->feederStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, ":"

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 148
    .local v6, "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_0
    const-string v0, "FeederTxns"

    .line 151
    sget-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->feedertxnStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 152
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 154
    :cond_1
    const-string v0, "Replay"

    .line 155
    sget-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->replayStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 156
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 158
    :cond_2
    const-string v0, "ConsistencyTracker"

    .line 159
    sget-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->replicaStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 160
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 162
    :cond_3
    const-string v0, "BinaryProtocol"

    .line 163
    sget-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->binaryProtocolStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    aget-object v6, v1, v4

    .line 164
    .restart local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v6    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 166
    :cond_4
    const-string v0, "VLSNIndex"

    .line 167
    sget-object v1, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->vlsnIndexStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v2, v1

    :goto_5
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 168
    .local v4, "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->nameToDef:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v4    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 170
    :cond_5
    return-void
.end method


# virtual methods
.method public getStatisticProjections()Ljava/util/SortedSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 175
    .local v0, "retval":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-super {p0, v0}, Lcom/sleepycat/je/statcap/StatCaptureDefinitions;->getProjectionsInternal(Ljava/util/SortedSet;)V

    .line 177
    const-string v1, "FeederManager"

    .line 178
    .local v1, "groupname":Ljava/lang/String;
    sget-object v2, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->feederStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, ":"

    if-ge v5, v3, :cond_0

    aget-object v7, v2, v5

    .line 179
    .local v7, "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 181
    :cond_0
    const-string v1, "FeederTxns"

    .line 182
    sget-object v2, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->feedertxnStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v3, v2

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v7, v2, v5

    .line 183
    .restart local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    :cond_1
    const-string v1, "Replay"

    .line 186
    sget-object v2, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->replayStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_2

    aget-object v7, v2, v5

    .line 187
    .restart local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 189
    :cond_2
    const-string v1, "ConsistencyTracker"

    .line 190
    sget-object v2, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->replicaStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v3, v2

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_3

    aget-object v7, v2, v5

    .line 191
    .restart local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 193
    :cond_3
    const-string v1, "BinaryProtocol"

    .line 194
    sget-object v2, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->binaryProtocolStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v3, v2

    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_4

    aget-object v7, v2, v5

    .line 195
    .restart local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v7    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 197
    :cond_4
    const-string v1, "VLSNIndex"

    .line 198
    sget-object v2, Lcom/sleepycat/je/rep/utilint/StatCaptureRepDefinitions;->vlsnIndexStats:[Lcom/sleepycat/je/utilint/StatDefinition;

    array-length v3, v2

    :goto_5
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 199
    .local v5, "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v5    # "stat":Lcom/sleepycat/je/utilint/StatDefinition;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 201
    :cond_5
    return-object v0
.end method
